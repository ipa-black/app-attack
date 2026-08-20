.class final Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;
.super Ljava/lang/Object;


# instance fields
.field _numSubstitutions:I

.field _pattern:Lorg/apache/oro/text/regex/Pattern;

.field _substitution:Lorg/apache/oro/text/regex/Perl5Substitution;


# direct methods
.method constructor <init>(Lorg/apache/oro/text/regex/Pattern;Lorg/apache/oro/text/regex/Perl5Substitution;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_numSubstitutions:I

    iput-object p2, p0, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_substitution:Lorg/apache/oro/text/regex/Perl5Substitution;

    iput-object p1, p0, Lorg/apache/oro/text/perl/ParsedSubstitutionEntry;->_pattern:Lorg/apache/oro/text/regex/Pattern;

    return-void
.end method
