"! <p class="shorttext synchronized" lang="en">APACK 3</p>
CLASS zcl_apack_3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_apack_manifest.

    "! <p class="shorttext synchronized" lang="en">CONSTRUCTOR</p>
    "!
    METHODS constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_apack_3 IMPLEMENTATION.


  METHOD constructor.

    zif_apack_manifest~descriptor = VALUE #(
                group_id        = 'github.com/jrodriguez-abapGit-Testing'
                artifact_id     = 'package3'
                version         = '1.0.0'
                repository_type = 'abapgit'
                git_url         = 'https://github.com/jrodriguez-abapGit-Testing/package3.git' ).

    INSERT VALUE #( group_id    = 'github.com/jrodriguez-abapGit-Testing'
                    artifact_id = 'package1'
                    version     = '1.0.1'
                    git_url     = 'https://github.com/jrodriguez-abapGit-Testing/package1.git' )
           INTO TABLE zif_apack_manifest~descriptor-dependencies.

    INSERT VALUE #( group_id    = 'github.com/jrodriguez-abapGit-Testing'
                    artifact_id = 'package2'
                    version     = '1.0.1-rc.3'
                    git_url     = 'https://github.com/jrodriguez-abapGit-Testing/package2.git' )
           INTO TABLE zif_apack_manifest~descriptor-dependencies.

    INSERT VALUE #( group_id    = 'github.com/jrodriguez-abapGit-Testing'
                    artifact_id = 'just-for-testing'
                    version     = '1.5.4-beta'
                    git_url     = 'https://github.com/jrodriguez-abapGit-Testing/just-for-testing.git' )
           INTO TABLE zif_apack_manifest~descriptor-dependencies.

  ENDMETHOD.


ENDCLASS.
