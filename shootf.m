function [error, sol_outward, sol_inward] = shootf(l_guess,p_guess,r_guess,t_guess, X, m)

    % Define the initial conditions for the outward integration
    [l0_outward, P0_outward, r0_outward, T0_outward] = load1(l_guess,p_guess,r_guess,t_guess);
    % Perform outward integration to get the values at m
    [m1 sol_outward] = ode45(@(m, y) derivs(m,r0_outward,P0_outward,T0_outward,l0_outward),[0 10^35],[l0_outward, P0_outward, r0_outward, T0_outward])

    % Define the initial conditions for the inward integration
    [l0_inward, P0_inward, r0_inward, T0_inward] = load2(l_guess,p_guess,r_guess,t_guess);

    % Perform inward integration to get the values at the surface
    [m2, sol_inward] = ode45(@(m, y) derivs(m,r0_inward,P0_inward,T0_inward,l0_inward),[0 10^35],[l0_inward, P0_inward, r0_inward, T0_inward]);
    
    % Extract the values at m and the surface
    l_outward = sol_outward(end, 1);
    P_outward = sol_outward(end, 2);
    r_outward = sol_outward(end, 3);
    T_outward = sol_outward(end, 4);
    
    l_inward = sol_inward(end, 1);
    P_inward = sol_inward(end, 2);
    r_inward = sol_inward(end, 3);
    T_inward = sol_inward(end, 4);
    
    % Calculate the error
    error = [l_outward - l_guess, P_outward - p_guess, r_outward - r_guess, T_outward - t_guess, l_inward - l_guess, P_inward - p_guess, r_inward - r_guess, T_inward - t_guess];
end