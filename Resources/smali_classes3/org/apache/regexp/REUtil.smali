.class public Lorg/apache/regexp/REUtil;
.super Ljava/lang/Object;
.source "REUtil.java"


# static fields
.field private static final complexPrefix:Ljava/lang/String; = "complex:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRE(Ljava/lang/String;)Lorg/apache/regexp/RE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-static {p0, v0}, Lorg/apache/regexp/REUtil;->createRE(Ljava/lang/String;I)Lorg/apache/regexp/RE;

    move-result-object p0

    return-object p0
.end method

.method public static createRE(Ljava/lang/String;I)Lorg/apache/regexp/RE;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/regexp/RESyntaxException;
        }
    .end annotation

    .line 81
    const-string v0, "complex:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Lorg/apache/regexp/RE;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/regexp/RE;

    invoke-static {p0}, Lorg/apache/regexp/RE;->simplePatternToFullRegularExpression(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/regexp/RE;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
