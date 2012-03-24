unique template pdisk/host/config-file;

include { 'pdisk/variables' };

include { 'components/filecopy/config' };

'/software/components/filecopy/services/{/etc/stratuslab/pdisk-host.cfg}'=nlist(
  'config', format(file_contents('pdisk/host/pdisk-host.cfg'),
                    STRATUSLAB_PDISK_TYPE,
                    STRATUSLAB_PDISK_NFS_LOCATION,
                    STRATUSLAB_PDISK_ISCSIADM,
                    STRATUSLAB_PDISK_SUPER_USER,
                    STRATUSLAB_PDISK_SUPER_USER_PWD,
                    STRATUSLAB_PDISK_CURL,
                    STRATUSLAB_PDISK_REGISTER_FILENAME,
            ),
  'owner','root:root',
  'perms','0644',
);
