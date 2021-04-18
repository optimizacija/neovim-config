import {bla} from 'something-else';
const aasdf: number = 3;
bla();

console.log(aasdf + 3);

/*
 * function that does something 
 */
function fibonacci(n: number): number {
	if (n <= 1) return 1;
	return fibonacci(n - 1) + fibonacci(n - 1);
}

console.log(fibonacci(5));
