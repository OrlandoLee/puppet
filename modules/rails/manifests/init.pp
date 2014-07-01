class rails{
 package { 'rails':
     ensure   => 'installed',
     provider => 'gem',
 }
}