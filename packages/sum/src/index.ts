const sum = async (numbers: number[]) => {
    return numbers.reduce((sum,n) => {
        return sum + n;
    }, 0);
};

export {
    sum
};
