.class Lorg/apache/commons/lang/StringPrintWriter;
.super Ljava/io/PrintWriter;
.source "StringPrintWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 81
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0, p1}, Ljava/io/StringWriter;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 93
    iget-object v0, p0, Ljava/io/PrintWriter;->out:Ljava/io/Writer;

    check-cast v0, Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
