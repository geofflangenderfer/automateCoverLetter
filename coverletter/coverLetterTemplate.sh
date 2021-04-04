#!/usr/bin/env bash

cl=$(cat << EOF
$(date "+%B %-d, %Y")

$1


Dear Recruiter,

I am submitting my $1 software engineer resume. I care about two things: challenging myself and working with others who feel the same. $1 would nurture these.

I enjoy the problem solving process involved in automating manual processes. For example, I automated grading a SQL homework while working as a TA. I used bash and psql, the PostgreSQL CLI tool. That process was satisfying and I would love to do the same on a bigger scale at $1. 

Most of my personal projects come from a problem I want to solve. And I grow my coding abilities to match. I start from the desired result (I don't like clicking in pgAdmin), then break down the problem into manageable chunks (how can I load students' .sql files?). The problem -> tool approach helps me avoid building something no one wants. For example, I used bash and psql because they eliminated required pgAdmin clicks. 

I am a hard worker. My peers have made me aware of this. And, I enjoy learning from difficult problems.

I'm passionate about automating painful, manual processes. Working at $1 would allow me to scale that passion to help the most people.

I am ready to make an impact to a team at $1, and I look forward to speaking with you.

Thanks, 


Geoff Langenderfer
EOF
)


echo -e "$cl" > $1_cl.txt
xclip -sel clip < $1_cl.txt 
pandoc -o $1_cl.pdf $1_cl.txt
