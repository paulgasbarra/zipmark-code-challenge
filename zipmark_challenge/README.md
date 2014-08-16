## Welcome

If you are reading this, you probably have interviewed or chatted with someone on the team at Zipmark.  This is our standard "toy" project we normally like to work on together to see how you think about problems, model them, and make decisions.  If you stumbled upon this project randomly and want to give it a shot, please feel free to fork the project and hack away.  We would love to see what you come up with.

An initial version of this project should be doable in a short amount of time (we usually do coding sessions for less than half a day with interviewees), but has many facets that could be improved beyond that inital cut.

## Objective

Build a small application that fetches and updates the Federal Reserve's current list of Banks and Routing numbers and then exposes a JSON API where users can lookup a Bank's details by routing number.

## Resources

Bank Data:  http://www.fededirectory.frb.org/FedACHdir.txt

Truncated Bank Data: https://gist.github.com/jakehow/3d96b83c4a4a1e6313d4/raw/f2990b4cef86fe9454ba1a643ccee118ca0b5757/truncated_list

*This is the first 100 lines of the file, much easier to deal with if you are requesting it a lot.

## Getting Started

1. Fork this Repo
2. Code up your Version
3. Email us or send a PR so we can check it out

## Example Behavior

`curl http://hostname/banks/123456789`

Output:

```json
{
  name: "First Bank of Zipmark",
  routing_number: "123456789",
  record_type: "Record Type",
  phone_number: "212-555-1212",
  address: {
    street: "56 W 22nd St",
    street_2: "9th Floor",
    city: "New York",
    state: "NY",
    zip_code: "10010"
  }
}
```

## Niceties

* deployable to Heroku

## Ideas for Enhancements

* provide a web client that allows a user to enter a routing number into a form and see the results in a browser
* scheduling/backgrounding/resilience
* track updates and changes
* etc

## Gameplan

## Create rails server to store banking information
## Do some rspec for the bank model
## Create bank model
## Figure out how to parse Fed data into JSON
## Store banks in the database
## Set up search by routing number form
## Print desired bank information to the screen.
## Create a cron to update the database
## Create a routing number webpage that has some responsive elements to it.
## Geolocate routing numbers using bank address
## Yelp API?


def create_people(entries, parse)
  file = File.open(entries)
  file.each_line do |line|
    entry_arr = line.split(parse.delimiter)
    person = Person.new(
      entry_arr[parse.last_name],
      entry_arr[parse.first_name],
      entry_arr[parse.gender],
      entry_arr[parse.birth_date],
      entry_arr[parse.color]
      )
  $people << person
  end
end

console.log("This is the api request " + requri)
              $.ajax({
                type: 'get',
                url: '/data_request',
                data: {url: requri},
                dataType: 'json',
                success: function(data){
                  data.character_id = data.id;
                  if (data.image != undefined) {data.image = data.image.medium_url;}
                  console.log("This is the result of the ajax api call" + data)
                  svgDisplay(data, category);
                    $.ajax({
                        type: "POST",
                        url: "/character",
                        data: {character: data}
                    })//end ajax POST


"072413722O0710003011022108000000000UNIVERSITY BANK   2015 WASHTENAW   ANN ARBOR    MI481040000734741585811"

            string[0-7]=routing number

            Assign first 0-10 characters to routing number
            Address begins with 53 through 69, if comma present split at comma address 1 is before,
            Address 2 after.
            State = line[83-84]
