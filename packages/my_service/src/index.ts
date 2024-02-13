import { setTimeout } from 'timers/promises';
import { rng } from 'rng';
import { sum } from 'sum';

(async() => {
    while(true) {
        const number = await rng(1, 100);
        
        const collection = await Promise.all([...Array(number).keys()].map(async (n) => { 
            return rng(1, n);
        }));

        const s = await sum(collection);

        console.log("Sum = ", s, "Seed = ", number);

        await setTimeout(1000);
    }
})();
