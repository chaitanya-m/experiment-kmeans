centroids = rand(2,5).*10  %  generate 5 2-D centroids and store in a 2x5 matrix

diffs = [];
data = [];
for i = 1:10 % generate 10 diffs from centroids for clusters
  diffs = [diffs;rand(2,5)./10]; %each diff is a 2x5 matrix that will be used to slightly offset the centroid
  data = [data;centroids.+diffs(i)]; % add diffs to centroids to generate data. we have 10 data points around each centroid. 
				    %store in a 20x5 matrix, 10 2D points for each of the 5 centroids
end

% on average we should expect the clusters to be very well defined

save datapoints data;
save centroids centroids;

