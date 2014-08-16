require 'open-uri'

uri = "https://gist.github.com/jakehow/3d96b83c4a4a1e6313d4/raw/f2990b4cef86fe9454ba1a643ccee118ca0b5757/truncated_list"

open(uri) {|f|
    f.each_line {|line|

     name = line[35..70].rstrip
     routing_number = line[0..8]
     record_type = line[19]
     area_code =  line[138..140]
     phone_prefix = line[141..143]
     phone_suffix = line[144..147]
       phone_number = area_code + '-' + phone_prefix + "-" + phone_suffix
     address = line[71..106].split(', ')
       street = address[0].rstrip
       street_2 = address[1].rstrip
     city = line[107..126].rstrip
     state = line[127..128]
     zip_code = line[130..134]

     Bank.create = (
      :name => name,
      :routing_number => routing_number,
      :record_type => record_type,
      :phone_number => phone_number,
      :street => street,
      :street_2 => street_2,
      :city => city,
      :state => state,
      :zip_code => zip_code
      )


    }
}
