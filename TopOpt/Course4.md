https://isae-supaero.zoom.us/j/99936102637

La partie audio de la conférence peut être rejointe par téléphone.
Le numéro de réunion est le : 99936102637
Voici une liste de numéros permettant de rejoindre la conférence ZOOM :
France : +33 7 5678 4048
France : +33 1 7037 2246
France : +33 1 7037 9729

# Sensitivity Analysis aka SOL200 in Nastran

Intro to gradient evaluation [slide C2 with audio](https://app.amanote.com/note-taking/document/c0e1b869-24c5-47a1-8cb2-3b6737f3f9ef)

Gradient definition [slide C2 with audio](https://app.amanote.com/note-taking/document/672cad97-0e39-45e1-8623-166c6796fb06)

Gradient continued [slide C2 with audio](https://app.amanote.com/note-taking/document/a8d36ccd-e581-4673-a5fb-9f0544ac4ba2)

Nastran differentiation [slide C2 with audio](https://app.amanote.com/note-taking/document/827200fd-e137-475b-aab5-58d734086654)


Your first exercice on Gradient computing available on LMS [slide C2 with audio](https://app.amanote.com/note-taking/document/56f9f771-2ef5-4525-a346-17785fce9aa4)


Read the lecture note (constrained Optimization on the LMS) and start by reading the handwritten exercice.


A live correction and a numerical implementation on Matlab will be proposed (ZOOM session for correction) [slide C2 with audio](https://app.amanote.com/note-taking/document/f3d53bf1-2e2e-42be-9da0-a3f7a6eafbd6)

## Matlab tutorials on:

 [Complex-step derivatives](http://htmlpreview.github.io/?https://github.com/jomorlier/mdocourse/blob/master/ComplexStep/ComplexStep.html)

Estimate derivatives by simply passing in a complex number to your function.
A single (complex) function evaluations computes both the function's value **(Re)** and the derivative **(Im)**.
Is it **always** possible to do this? I mean with a standard code form industry (Nastran, Fluent etc...)?

 [gradient evaluation](http://htmlpreview.github.io/?https://github.com/jomorlier/mdocourse/blob/master/Sensibility/sensitivity_TD.html)

Comparison of **Symbolic/Finite Differences/DIRECT/ADJOINT Method** on a really simple mechanical system (2DOFs).
Play with the code for **checking** Symbolic with Finite Differences. Play with $\Delta_x$ ?
By the way, just add the complex step approach, not so difficult when you have access to the **original** code.
Oh, at the end which method is exact? 

 BTW, How Nastran is doing for gradient computation on SOL2OO ?
[gradient nastran](https://app.amanote.com/note-taking/document/827200fd-e137-475b-aab5-58d734086654)
