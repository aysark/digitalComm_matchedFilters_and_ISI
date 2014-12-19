## Matched Filtering and ISI

**Introduction**

To maximize the output signal-to-noise ratio (SNR), we must design matched filters. One type of similar implementation is the correlator, which is obtained by correlating a known signal with an unknown signal to determine the presence of the known signal in the unknown signal. We also use equalization to reduce the effect of ISI.

**Results & Analysis**

**Problem 1**

In the following figures, each set of 3 plots, contains: the first plot is the original signal transmitted. The second plot is the received signal plus AWGN at a specific sigma. And the last plot is correlation between the transmitted signals and the received signals. We see here that the correlation is varies across the different type of signal (s0 or s1), this is because correlation is essentially the total energy of a signal, and the energy of the transmitted signals is different since they are vary in frequency.

We also see that as variance increases, the received signals become similar, hence their correlation or total energy will be similar too.

**Problem 2**

The following sets follow the same structure as the previous question, except the last plot is of the matched filter. In the first few sets, we don't see much difference. But as variance increases, we notice there are differences in the matched filtered signals.  The similarities between them agrees with the behavior of filters, such that the SNR depends on the input energy signal and the power spectral density of noise- not on the shape of the signal wave form.

Choosing signals that have the same total energy is bad for correlators, while it is fine for matched filters, since matched filters work on the similarity of signals.

**Problem 3**

We are given the convolution matrix, the desired output vector and must get the normalized coefficients of a linear filter based equalizer; ZFE, using the least squares method. This can be found via: inv(transpose(X)\*X)\*transpose(X)\*z. Which gives:

 -0.0008,   0.0050,  -0.0020,   0.0001

The normalized values are:

 -0.1,   0.625,  -0.25,   0.0125

To get the values for an MMS equalizer, we must take into account the SNR:

inv(I + transpose(X)\*X)\*transpose(X)\*z

But since the SNR is 5, which is a relatively low value (not a lot of power in signal, or too much noise), it did not have much affect on the equalizer settings.

 -0.0008,   0.0050,  -0.0020,  0.0001

The normalized values are:

 -0.1,   0.625,  -0.25,   0.0125

**Conclusion**

It can be concluded from the graphs above, the correlators show the energy of signals. On the other hand, the matched filter shows the similarity of the signals. Which means, choosing signals that have the same total energy is bad for correlators, while it is fine for matched filters. During the correlation or match filtering from t in [0,T], correlation and match filter are different all throughout except at T.
