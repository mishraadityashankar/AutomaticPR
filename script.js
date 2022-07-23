const simpleGit = require("simple-git");
const git = simpleGit.default();
const branchName = "test1";
const commitMsg = "initial commit1";
const prMsg = "initial";
async function main() {
  try {
    await git.checkoutLocalBranch(branchName);
    const branch = await git.branch();
    console.log(branch.current);
    await git.add("./*");
    await git.commit(commitMsg);
    await git.push(["-u", "origin", branchName], () => console.log("done"));
  } catch (errors) {
    const status = await git.status();

    if (status.conflicted.length > 0) {
      return;
    }

    console.log(errors);
  }
}
main();
