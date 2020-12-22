# README

after cloning the repository in the cloned directory ms_challenge_2 run
<code>bundle install</code>

the environment variables CONTENTFUL_ACCESS_TOKEN and CONTENTFUL_SPACE_ID have to be set
e.g run the server with:
<code>
CONTENTFUL_ACCESS_TOKEN=... CONTENTFUL_SPACE_ID=... rails server
</code>

<p>run all tests with:</p>
<code>
CONTENTFUL_ACCESS_TOKEN=... CONTENTFUL_SPACE_ID=... rspec spec
</code>
<p>(I assumed I should not share these secrets on a public github repository)</p>
