FROM paperist/alpine-texlive-ja:2022
COPY ./style/* ./
COPY ./main.tex ./

# There is a bug that labels (serial numbers) for references, figures, tables, etc. are displayed as "?".
# To avoid this, they are converted multiple times.
# (This phenomenon may be seen only in Japanese environment.)
RUN platex main.tex && platex main.tex && platex main.tex \
    && dvipdfmx main.dvi
