function mfp_forward_sep
	sudo ssh -L 8090:$argv:8090 -L8091:$argv:8091 -L443:$argv:443 -L80:$argv:80 -L50003:$argv:50003 -L50001:$argv:50001 dan@polaris.sep.net
end
