function results = ReadDataDimNew(filename)

fid = fopen(filename,'r');
N = fscanf(fid,'%d',1);
dim = fscanf(fid,'%d',1);

results = cell(N,1);

for i = 1:1:N
    A = fscanf(fid,'%d',2);
    results{i}.ID = A(1);
    results{i}.size = A(2);
    size = results{i}.size;

    results{i}.data = zeros(size,dim);

    for j=1:1:size
        A = fscanf(fid,'%f',dim);
        results{i}.data(j,1:dim) = A;
    end
end

fclose(fid);

