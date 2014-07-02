node 'linode_japan_1' {
include nginx
include ssh
include user
include sudoers
include rails
#include show
#include aclass         
include rabbitmq
}
