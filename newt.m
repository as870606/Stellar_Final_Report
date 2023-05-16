function [l,p,r,t] = newt(l_guess,p_guess,r_guess,t_guess,tol,max_iter)

correct = false;
iter = 0;

out = shootf_func(load1, [l_guess p_guess r_guess t_guess]);
in = shootf_func(load2, [l_guess p_guess r_guess t_guess]);

for i = 1:length(outward)
    diff(i) = out(i) - in(i);
end

for j = 1:length(outward);
    if diff(j) < tol
        correct = true;
    else
        correct = false;
     
    end
end

end
