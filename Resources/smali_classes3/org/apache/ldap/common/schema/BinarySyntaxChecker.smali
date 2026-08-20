.class public Lorg/apache/ldap/common/schema/BinarySyntaxChecker;
.super Ljava/lang/Object;
.source "BinarySyntaxChecker.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SyntaxChecker;


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/schema/SyntaxChecker;

.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.1466.115.121.1.5"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/ldap/common/schema/BinarySyntaxChecker;

    invoke-direct {v0}, Lorg/apache/ldap/common/schema/BinarySyntaxChecker;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/schema/BinarySyntaxChecker;->INSTANCE:Lorg/apache/ldap/common/schema/SyntaxChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSingletonInstance()Lorg/apache/ldap/common/schema/SyntaxChecker;
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/ldap/common/schema/BinarySyntaxChecker;->INSTANCE:Lorg/apache/ldap/common/schema/SyntaxChecker;

    return-object v0
.end method


# virtual methods
.method public assertSyntax(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    return-void
.end method

.method public getSyntaxOid()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "1.3.6.1.4.1.1466.115.121.1.5"

    return-object v0
.end method

.method public isValidSyntax(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
