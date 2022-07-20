#  Shout Out

The app utilizes AWS (with [Amplify](https://aws.amazon.com/amplify/)) as a backend and fully rely on [Amplify libraries](https://docs.amplify.aws/lib/q/platform/ios/) to operate.

- It shows off the abilities to Sign in and Sign up with `AWSCognitoAuthPlugin`. 
- It leverages the `AWSDataStorePlugin` to store the data locally and seamlessly sync it with the remote database (DynamoDB).

Overall using AWS Amplify libraries is a nice experience (unlike most of the rivals) for the new projects as it offers the support of Combine and SwiftUI ready right out of the box.

### Implemented
- Create user.
- Post.
- Delete posts.
### Not implemented
- Search other users and load other's posts in a timeline (`UserAccount.following` is intended to store other users IDs).

## Running the code
To run the project there are two options:
- One could run `amplify init` in the project directory and follow the instructions to create the required resources with own AWS account. Two files `amplifyconfiguration.json` and `awsconfiguration.json` should be added to the project root then.
- Alternatively you may request for `amplifyconfiguration.json` and `awsconfiguration.json` to use the resources in my account.

