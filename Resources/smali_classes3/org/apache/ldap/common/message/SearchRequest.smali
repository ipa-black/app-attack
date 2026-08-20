.class public interface abstract Lorg/apache/ldap/common/message/SearchRequest;
.super Ljava/lang/Object;
.source "SearchRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ManyReplyRequest;


# static fields
.field public static final RESPONSE_TYPES:[Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/SearchRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v0, 0x4

    .line 47
    new-array v0, v0, [Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/ldap/common/message/SearchResponseDone;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/apache/ldap/common/message/SearchResponseEntry;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/apache/ldap/common/message/SearchResponseReference;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/apache/ldap/common/message/ExtendedResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/ldap/common/message/SearchRequest;->RESPONSE_TYPES:[Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract addAttribute(Ljava/lang/String;)V
.end method

.method public abstract getAttributes()Ljava/util/Collection;
.end method

.method public abstract getBase()Ljava/lang/String;
.end method

.method public abstract getDerefAliases()Lorg/apache/ldap/common/message/DerefAliasesEnum;
.end method

.method public abstract getFilter()Lorg/apache/ldap/common/filter/ExprNode;
.end method

.method public abstract getResponseTypes()[Lorg/apache/ldap/common/message/MessageTypeEnum;
.end method

.method public abstract getScope()Lorg/apache/ldap/common/message/ScopeEnum;
.end method

.method public abstract getSizeLimit()I
.end method

.method public abstract getTimeLimit()I
.end method

.method public abstract getTypesOnly()Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setBase(Ljava/lang/String;)V
.end method

.method public abstract setDerefAliases(Lorg/apache/ldap/common/message/DerefAliasesEnum;)V
.end method

.method public abstract setFilter(Lorg/apache/ldap/common/filter/ExprNode;)V
.end method

.method public abstract setScope(Lorg/apache/ldap/common/message/ScopeEnum;)V
.end method

.method public abstract setSizeLimit(I)V
.end method

.method public abstract setTimeLimit(I)V
.end method

.method public abstract setTypesOnly(Z)V
.end method
