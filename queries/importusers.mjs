import fs from 'fs/promises'

const inputPath = new URL('../reports/users.json', import.meta.url)
const outputPath = '/home/gregoryw/repos/topsify-wcgregory/db/seeds/users.sql'

class GenerateSQL {
	#data
	constructor() {
		//this.#data = null
	}

	async getJSONData(input) {
		const openFile = await fs.readFile(input, 'utf-8') 
		this.#data = await JSON.parse(openFile)
	}

  async createSQLFile(output) {
		for (let user of this.#data) {
		  const startOfSQLLine = `INSERT INTO users VALUES(`
			const userId = `${user.id},'${user.username}','${user.first_name.replace("'", "''")}',`
			const userNameEmail = `'${user.last_name.replace("'", "''")}','${user.email.replace("'", "''")}',`
			const userInfo = `'${user.avatar.replace("'", "''")}','${user.password}');\n`
			const appendLine = startOfSQLLine + userId + userNameEmail + userInfo
			await fs.appendFile(output, appendLine)
		}
	}

}

const userData = new GenerateSQL()
await userData.getJSONData(inputPath)
userData.createSQLFile(outputPath)
