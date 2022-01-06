Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices


## Setup

### Using DBT in CLI

1. Install DBT CLI via PIP (best to create a virtualenv) or Homebrew - [CLI Installation](https://docs.getdbt.com/dbt-cli/installation)
2. The project is already created in `dbt_project.yml`, you don't need to reconfigure it, but you will need a `profiles.yml` file in your `~/.dbt/` folder, as described [here](https://docs.getdbt.com/dbt-cli/configure-your-profile). An example Profile config can be found below. You will need to fill in the account, user and password of our Snowflake instance.
Please remember that the `account` is not only the Snowflake account number, but also the Amazon Region, as in `abc-123456.us-east-2`.
3. Configure your IDE / CLI autocompletion as described [here](https://discourse.getdbt.com/t/how-we-set-up-our-computers-for-working-on-dbt-projects/243).
4. Run `dbt deps` to install all needed packages.
5. Now `dbt list` will list all the resources available in this project.
6. Run `dbt seed` to seed the project.
7. `dbt run` should work without a hitch now.

After the initial installation, you will be able to activate the project with:
1. `cd dbt-bytecode`
2. `source dbt-env/bin/activate`

### Example Profile Config 

In `~/.dbt/profiles.yml`:
```
bytecode:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: [enter account]
      user: [enter username]
      password: [enter password]
      role: 
      database: TRAINING_DB_[YOUR_NAME]]
      warehouse: TRAINING_WH_[YOUR_NAME]]
      schema: dbt_[YOUR_NAME]]
      threads: 4
    prod:
      type: snowflake
      account: [enter account]
      user: [enter username]
      password: [enter password]
      role: 
      database: TRAINING_DB_[YOUR_NAME]]
      warehouse: TRAINING_WH_[YOUR_NAME]]
      schema: dbt
      threads: 4
```
