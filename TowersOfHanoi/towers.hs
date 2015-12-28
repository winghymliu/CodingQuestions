type Disk = Int 
data Tower = Tower String [Disk]
type TowersOfHanoi = [Tower]

towerName :: Tower -> String
towerName (Tower name _ ) = name

move (Tower _ []) (Tower _ []) _ =
	print "Done"

move (Tower t1n (t1dh:t1ds)) (Tower t2n t2d) (Tower t3n t3d)  = 
	putStrLn("Move disk " ++ show t1dh ++ " from " ++ t1n ++ " to " ++ t2n) 


solve = 
	let 
		towerA = Tower "TowerA" [1,2,3,4,5]
		towerB = Tower "TowerB" []
		towerC = Tower "TowerC" []
	in move towerA towerB towerC

main = solve 

