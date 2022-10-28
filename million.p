#!/usr/bin/perl
use Term::ANSIColor qw(:constants);



open QS, "questions.txt" or die $!;
@lines = <QS>;

my @prize = (100, 500, 1200, 5000, 10000, 15000, 20000, , 22000, 25000, 32000, 48000, 64000, 128000, 256000, 512000, 1024000, 2048000, 10000000);


my @answers = ("b", "b", "d", "c", "d", "c", "c", "a", "b", "a", "c", "b", "d", "d", "b", "a", "c", "a", "b");



my $score = 0;
my $life = 2;
my $current = 0;
my $ques = 0;



print "LIVES = $life, YOUR CURRENT SCORE = $score\n";



while ($life gt -1 && $ques ne 15) {
    print BOLD, MAGENTA $lines[$current];
    print $lines[$current + 1];
    print $lines[$current + 2], RESET;
    print "Your Answer: ";
    my $answer = <STDIN>;
    chomp $answer;
    print "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
    if ($answer eq $answers[$ques]) {
        $current += 3;
        $score = $prize[$ques];
        $ques++;
        print DARK MAGENTA, "RIGHT! ", RESET;
    }
    else {
        $life--;
        if ($life eq - 1) {
            print RED, "GAME OVER: YOUR REWARD = $score DOLLARS\n", RESET;
            last;
        }
        print RED, "FALSE, NO LIVES REMAINING!\n", RESET;
    }
    if ($current eq 45) {
        print GREEN, "\nGAME OVER: YOUR REWARD = $score DOLLARS\n", RESET;
    }
    else {
        print GREEN, "YOUR CURRENT SCORE = $score\n", RESET;
    }
}
