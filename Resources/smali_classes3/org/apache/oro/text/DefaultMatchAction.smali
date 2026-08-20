.class final Lorg/apache/oro/text/DefaultMatchAction;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/oro/text/MatchAction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMatch(Lorg/apache/oro/text/MatchActionInfo;)V
    .locals 1

    iget-object v0, p1, Lorg/apache/oro/text/MatchActionInfo;->output:Ljava/io/PrintWriter;

    iget-object p1, p1, Lorg/apache/oro/text/MatchActionInfo;->line:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
