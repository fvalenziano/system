Run Firefox from a container with GUI

Shares the host x11
Good for keeping work isolated and portable

Be sure to use a username and groupname that does not exist on your host, otherwise it will use that user's Firefox session instead of the isolated docker session.

To run without importing a profile:
docker run -ti --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       firefox

If you want to bring a profile with:
docker run -ti --rm \
	-e DISPLAY=$DISPLAY \
	-v ~/.mozilla/firefox/profile.default:/home/firefox/.mozilla/firefox/profile.default \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	firefox

I ran into the <window id="main-window"> yellow prompt bug that appeared in Debian in January 2018 when I tried importing a profile that had custom settings.
Creating a clean profile that only contains the imported bookmarks worked when mounting within Docker.


Bugfixes:
	Issue: Google Analytics site breaks Firefox with the following console error: Error: (msgtype=0x170080,name=PBrowser::Msg_Destroy) Channel error: cannot send/recv
	Resolution: disable browser.tabs.remote.autostart
	Steps:
		Go to about:config
		search for browser.tabs.remote.autostart
		double-click browser.tabs.remote.autostart to set to false
		restart Firefox

	Issue: Bringing an existing profile that does not have default settings causes the <window id="main-window"> which first appeared in Debian in January 2018
	Resolution: import clean profile to Docker and then make your modifications from within Docker
	
	Issue: dconf can't create the .cache/dconf folder due to permissions error
	Resolution: Set ownership permissions within Dockerfile so that the user owns its home directory
	Steps: 
	Edit Dockerfile
	Add entry:
		CMD chown firefox /home/firefox

