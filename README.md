# Install ScrumPy in a safe Docker environment

The [installation](http://mudshark.brookes.ac.uk/ScrumPy/Installation) of
ScrumPy requires root access and only works on older Linux distributions. This
Docker image takes care of all that.

## Instructions

1. First of all, you need [x11docker](https://github.com/mviereck/x11docker) in
   order to run a GUI from inside of a container. You might need to install
   `xclip` on your local machine in order to share the clipboard between your
   system and the GUI.
2. [Download](http://mudsharkstatic.brookes.ac.uk/Download/ScrumPy.tgz) the
   latest version of ScrumPy (1254 currently) and extract it into the root of
   this repository. If it is a different version, please adjust the
   `.dockerignore` file.
3. If you have unusual user and group IDs you might have to modify the build
   script, otherwise just try `make build` and go grab a cup of coffee/tea.
4. When the build has finished, hit `make run` and excitedly wait for a window
   with ScrumPy to pop up.
5. While that container is running, you can conveniently use `make copy` which
   will copy SBML (`*.sbml`) and `*.spy` files from the `models/` directory into
   the home of the docker user.
6. Take a good look at the [ScrumPy
   documentation](http://mudshark.brookes.ac.uk/ScrumPy/Doc) and get cracking.

## Copyright

There's no actual code here just some commands and a Dockerfile.

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img
alt="Creative Commons License" style="border-width:0"
src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />This work is
licensed under a <a rel="license"
href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution
4.0 International License</a>.
