
const rng = async (min: number, max: number): Promise<number> => {
    return Math.floor(Math.random() * max) + min;
};

export {
    rng,
}