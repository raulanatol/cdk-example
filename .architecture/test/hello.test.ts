import { expect as expectCDK, MatchStyle, matchTemplate } from '@aws-cdk/assert';
import { App } from 'aws-cdk-lib';
import * as Hello from '../lib/hello-stack';

test('Empty Stack', () => {
  const app = new App();
  // WHEN
  const stack = new Hello.HelloStack(app, 'MyTestStack');
  // THEN
  expectCDK(stack).to(matchTemplate({
    'Resources': {}
  }, MatchStyle.EXACT))
});
