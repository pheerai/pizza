#/bin/bash
# PREFIX gets set with the following priorities:
# 1) use provided argument
# 2) use environement PREFIX
# 3) use "/usr/local/"


if [ "$1" ]; then
	PREFIX:="$1"
else
	: ${PREFIX:="/usr/local"}
fi

# Create necessary directories

for i in "${PREFIX}/bin" "${PREFIX}/share/pizza"; do
	if [ ! -d "$i" ]; then
		mkdir -p "$i"
	fi
done

install -m 755 src/pizza "${PREFIX}/bin/pizza"
install -m 644 assets/* "${PREFIX}/share/pizza/"

# Tell the user what to do next, if he used another PREFIX

if [ "${PREFIX}" != "/usr/local" ]; then
	echo 'Your installation path differs from /usr/local'
	echo 'For pizza to run properly, please either modify the script'
	echo 'or set the PIZZAINC-variable accordingly.'
	echo '(Add the following to your ${shell}rc:'
	echo -e "\t export PIZZAINC=\"${PREFIX}/share/pizza/\""
	echo ")"
fi
