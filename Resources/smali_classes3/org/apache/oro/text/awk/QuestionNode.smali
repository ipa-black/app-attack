.class final Lorg/apache/oro/text/awk/QuestionNode;
.super Lorg/apache/oro/text/awk/OrNode;


# static fields
.field static final _epsilon:Lorg/apache/oro/text/awk/SyntaxNode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/oro/text/awk/EpsilonNode;

    invoke-direct {v0}, Lorg/apache/oro/text/awk/EpsilonNode;-><init>()V

    sput-object v0, Lorg/apache/oro/text/awk/QuestionNode;->_epsilon:Lorg/apache/oro/text/awk/SyntaxNode;

    return-void
.end method

.method constructor <init>(Lorg/apache/oro/text/awk/SyntaxNode;)V
    .locals 1

    sget-object v0, Lorg/apache/oro/text/awk/QuestionNode;->_epsilon:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-direct {p0, p1, v0}, Lorg/apache/oro/text/awk/OrNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-void
.end method


# virtual methods
.method _clone([I)Lorg/apache/oro/text/awk/SyntaxNode;
    .locals 2

    new-instance v0, Lorg/apache/oro/text/awk/QuestionNode;

    iget-object v1, p0, Lorg/apache/oro/text/awk/QuestionNode;->_left:Lorg/apache/oro/text/awk/SyntaxNode;

    invoke-virtual {v1, p1}, Lorg/apache/oro/text/awk/SyntaxNode;->_clone([I)Lorg/apache/oro/text/awk/SyntaxNode;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/oro/text/awk/QuestionNode;-><init>(Lorg/apache/oro/text/awk/SyntaxNode;)V

    return-object v0
.end method

.method _nullable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
