.class public Lorg/apache/kerberos/messages/value/ApOptions;
.super Lorg/apache/kerberos/messages/value/Options;
.source "ApOptions.java"


# static fields
.field public static final MAX_VALUE:I = 0x20

.field public static final MUTUAL_REQUIRED:I = 0x2

.field public static final RESERVED:I = 0x0

.field public static final USE_SESSION_KEY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 34
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x20

    .line 38
    invoke-direct {p0, v0}, Lorg/apache/kerberos/messages/value/Options;-><init>(I)V

    .line 39
    invoke-virtual {p0, p1}, Lorg/apache/kerberos/messages/value/ApOptions;->setBytes([B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    .line 47
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/ApOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "MUTUAL_REQUIRED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/ApOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "RESERVED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1}, Lorg/apache/kerberos/messages/value/ApOptions;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v1, "USE_SESSION_KEY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
