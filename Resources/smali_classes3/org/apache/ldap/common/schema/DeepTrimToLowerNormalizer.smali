.class public Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;
.super Ljava/lang/Object;
.source "DeepTrimToLowerNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/Normalizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public normalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/ldap/common/util/StringTools;->deepTrimToLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
