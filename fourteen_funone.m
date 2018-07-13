function differenceV = deltaV(t);
global Rd Xd
V_t = 1e9 + 1e8 * (1-exp(-t/100)) - Rd*t;
Vfinal = 1e9*(Xd/100);

differenceV = Vfinal - V_t;
end