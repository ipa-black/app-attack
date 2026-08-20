.class public Lorg/apache/kerberos/sam/SamException;
.super Ljava/lang/Exception;
.source "SamException.java"


# instance fields
.field private final type:Lorg/apache/kerberos/messages/value/SamType;


# direct methods
.method public constructor <init>(Lorg/apache/kerberos/messages/value/SamType;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/kerberos/sam/SamException;->type:Lorg/apache/kerberos/messages/value/SamType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/apache/kerberos/sam/SamException;->type:Lorg/apache/kerberos/messages/value/SamType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 88
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    iput-object p1, p0, Lorg/apache/kerberos/sam/SamException;->type:Lorg/apache/kerberos/messages/value/SamType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/Throwable;)V
    .locals 0

    .line 71
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 73
    iput-object p1, p0, Lorg/apache/kerberos/sam/SamException;->type:Lorg/apache/kerberos/messages/value/SamType;

    return-void
.end method


# virtual methods
.method public getSamType()Lorg/apache/kerberos/messages/value/SamType;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/kerberos/sam/SamException;->type:Lorg/apache/kerberos/messages/value/SamType;

    return-object v0
.end method
