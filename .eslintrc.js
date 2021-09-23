module.exports = {
	root: true,
	extends: ['prettier', '@liferay/eslint-config/react'],
	plugins: ['prettier'],
	rules: {
		'prettier/prettier': ['error'],
		'no-use-before-define': 'off',
		'react/prop-types': 'off',
		'no-useless-escape': 'off'
	}
};
