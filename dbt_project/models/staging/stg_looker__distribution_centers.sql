SELECT 
  id,
  name,
  latitude,
  longitude
FROM {{ ref('looker__distribution_centers') }}