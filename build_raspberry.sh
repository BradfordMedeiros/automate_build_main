
#maybe should be using submodules, but I don't really see the difference 

# clone dependencies
git clone https://github.com/BradfordMedeiros/automate_core
git clone https://github.com/BradfordMedeiros/automate_ui2

(
   echo "about to create automate ui"
   cd automate_ui2
   npm install
   npm run build
   echo "created automate ui"
)

# @todo need to copy the build product from automate into automate_core

(
   echo "about to create docker image"
   cd automate_core
   ./build_docker.sh
   echo "created docker image"
)
