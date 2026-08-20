.class public Lorg/apache/ldap/common/NotImplementedException;
.super Ljava/lang/RuntimeException;
.source "NotImplementedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    const-string v0, "N O T   I M P L E M E N T E D   Y E T !"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "N O T   I M P L E M E N T E D   Y E T !\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
