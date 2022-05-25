%BENKOULA Loubna Groupe 21 Devoir Codage et Compression

clc;clear all; close all;
prob=input('Entrez les probs:');%Par exemple : [0.2 0.3 0.25 0.25]
n=length(prob);%calcule le nbr de symboles  
symboles=[1:n];%les symboles sont class?s de 1 ? n
[dict,avglen]=huffmandict(symboles,prob);%creation du dictionnaire de mots codes ('huffmandict ': commande matlab predefinie)
temp=dict;
t=dict(:,2);%
for i=1:length(temp)
    temp{i,2}=num2str(temp{i,2});
end
disp('Le dictionnaire des mots codes Huffman:');
disp(temp)
fprintf('Entez le symbole entre  1 et %d  ',n);%exemple : 1
sym=input(':');
encod=huffmanenco(sym,dict);%encode le symbole entr? en faisant appel a la fonction matlab 'huffmanenco' 
disp('le code est:');%renvoi la valeur
disp(encod);
bits=input('Entrez le mot/sequence ? decoder entre []');%exemple : [0 0 1 1 ]
decod=huffmandeco(bits,dict);%decode la sequence grace a 'huffmandeco'
disp('le decodage de la sequence est:');%renvoi les symboles (exemple 2 1 pour '0011' )
disp(decod);