var current_version = '1.0.7';
var new_version = '1.0.8';

module.exports = function(grunt) {
  grunt.loadNpmTasks('grunt-replace');

  grunt.initConfig({
    replace: {
      task1: {
        options: {
          patterns: [
            {
              match: 'dockerizedrupal/backer:' + current_version,
              replacement: 'dockerizedrupal/backer:' + new_version
            },
            {
              match: 'git checkout ' + current_version,
              replacement: 'git checkout ' + new_version
            }
          ],
          usePrefix: false
        },
        files: [
          {
            expand: true,
            src: [
              'README.md',
            ]
          }
        ]
      },
      task2: {
        options: {
          patterns: [
            {
              match: '"version": "' + current_version + '"',
              replacement: '"version": "' + new_version + '"'
            }
          ],
          usePrefix: false
        },
        files: [
          {
            expand: true,
            src: [
              'package.json'
            ]
          }
        ]
      },
      task3: {
        options: {
          patterns: [
            {
              match: current_version,
              replacement: new_version
            }
          ],
          usePrefix: false
        },
        files: [
          {
            expand: true,
            src: [
              'VERSION.md'
            ]
          }
        ]
      },
      task4: {
        options: {
          patterns: [
            {
              match: 'export FACTER_VERSION="' + current_version + '"',
              replacement: 'export FACTER_VERSION="' + new_version + '"'
            }
          ],
          usePrefix: false
        },
        files: [
          {
            expand: true,
            src: [
              'src/backer/variables.sh'
            ]
          }
        ]
      },
      task5: {
        options: {
          patterns: [
            {
              match: 'dockerizedrupal/backer:' + current_version,
              replacement: 'dockerizedrupal/backer:' + new_version
            }
          ],
          usePrefix: false
        },
        files: [
          {
            expand: true,
            src: [
              'docker-compose.yml',
            ]
          }
        ]
      },
    }
  });

  grunt.registerTask('bump', 'replace');
  grunt.registerTask('default', 'replace');
};
