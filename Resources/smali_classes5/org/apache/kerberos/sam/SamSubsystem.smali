.class public final Lorg/apache/kerberos/sam/SamSubsystem;
.super Ljava/lang/Object;
.source "SamSubsystem.java"


# static fields
.field public static final PROPKEY_BASE:Ljava/lang/String; = "kerberos.sam.type."

.field private static final env:Ljava/util/Hashtable;

.field private static keyChecker:Lorg/apache/kerberos/sam/KeyIntegrityChecker;

.field private static final verifiers:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/kerberos/sam/SamSubsystem;->verifiers:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/kerberos/sam/SamSubsystem;->env:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnvironment(Ljava/util/Hashtable;)V
    .locals 1

    .line 153
    sget-object v0, Lorg/apache/kerberos/sam/SamSubsystem;->env:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static setIntegrityChecker(Lorg/apache/kerberos/sam/KeyIntegrityChecker;)V
    .locals 0

    .line 57
    sput-object p0, Lorg/apache/kerberos/sam/SamSubsystem;->keyChecker:Lorg/apache/kerberos/sam/KeyIntegrityChecker;

    return-void
.end method

.method public static verify(Lorg/apache/kerberos/store/PrincipalStoreEntry;[B)Ljavax/security/auth/kerberos/KerberosKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/kerberos/sam/SamException;
        }
    .end annotation

    .line 73
    const-string v0, " ) "

    const-string v1, "\' for SamType( "

    .line 0
    const-string v2, "Expecting entries with SAM type of "

    .line 75
    sget-object v3, Lorg/apache/kerberos/sam/SamSubsystem;->keyChecker:Lorg/apache/kerberos/sam/KeyIntegrityChecker;

    if-eqz v3, :cond_4

    .line 80
    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 85
    sget-object v3, Lorg/apache/kerberos/sam/SamSubsystem;->verifiers:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/kerberos/sam/SamVerifier;

    .line 89
    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lorg/apache/kerberos/sam/SamVerifier;->verify(Ljavax/security/auth/kerberos/KerberosPrincipal;[B)Ljavax/security/auth/kerberos/KerberosKey;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "kerberos.sam.type."

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/kerberos/messages/value/SamType;->getOrdinal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    sget-object v5, Lorg/apache/kerberos/sam/SamSubsystem;->env:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/kerberos/sam/SamVerifier;

    .line 109
    sget-object v6, Lorg/apache/kerberos/sam/SamSubsystem;->keyChecker:Lorg/apache/kerberos/sam/KeyIntegrityChecker;

    invoke-interface {v5, v6}, Lorg/apache/kerberos/sam/SamVerifier;->setIntegrityChecker(Lorg/apache/kerberos/sam/KeyIntegrityChecker;)V

    .line 111
    invoke-interface {v5}, Lorg/apache/kerberos/sam/SamVerifier;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    invoke-interface {v5}, Lorg/apache/kerberos/sam/SamVerifier;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getPrincipal()Ljavax/security/auth/kerberos/KerberosPrincipal;

    move-result-object v2

    invoke-interface {v5, v2, p1}, Lorg/apache/kerberos/sam/SamVerifier;->verify(Ljavax/security/auth/kerberos/KerberosPrincipal;[B)Ljavax/security/auth/kerberos/KerberosKey;

    move-result-object p0

    return-object p0

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/kerberos/sam/SamVerifier;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, " but got a type of entry with SAM type of "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    new-instance v2, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 142
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Failed on default constructor invocation for class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 134
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "No public default constructor on class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p1

    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Could not find verifier class \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object p0

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Could not find property \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    new-instance p1, Lorg/apache/kerberos/sam/SamException;

    invoke-virtual {p0}, Lorg/apache/kerberos/store/PrincipalStoreEntry;->getSamType()Lorg/apache/kerberos/messages/value/SamType;

    move-result-object p0

    const-string v0, "Entry has null SAM type"

    invoke-direct {p1, p0, v0}, Lorg/apache/kerberos/sam/SamException;-><init>(Lorg/apache/kerberos/messages/value/SamType;Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SamSubsystem not enabled with key integrity checker"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
