# Peatio plugin example

This repository demonstrates usage of Peatio plugins.

You can use power of `Rails::Railtie` to extend Peatio.

This example plugin adds new API endpoint `/api/v2/alphabet` which returns English alphabet, either in lowercase, or in uppercase depending on optional parameter `case`.

The main file which you should consider for analyzing lives at `lib/engine.rb`.

Keep in mind: extending Peatio is hard job and requires excellent understanding of Rails.

Read more about Peatio plugins at [#708](https://github.com/rubykube/peatio/pull/708).

![image](https://user-images.githubusercontent.com/7421323/37644319-180baba8-2c2c-11e8-9658-a8b71a285b59.png)
![image](https://user-images.githubusercontent.com/7421323/37644335-266abf22-2c2c-11e8-95b8-c0b062813735.png)

To install this plugin insert the following into `config/plugins.yml` and run `bin/install_plugins`:
```yml
- name:   peatio-plugin-example
  git:    https://github.com/rubykube/peatio-plugin-example.git
  commit: 2a6bb77e6b83e7f057f4308a907f31a88471abb7
```
