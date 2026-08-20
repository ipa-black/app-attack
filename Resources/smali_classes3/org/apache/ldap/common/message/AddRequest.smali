.class public interface abstract Lorg/apache/ldap/common/message/AddRequest;
.super Ljava/lang/Object;
.source "AddRequest.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SingleReplyRequest;


# static fields
.field public static final RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->ADDREQUEST:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/AddRequest;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    .line 46
    sget-object v0, Lorg/apache/ldap/common/message/AddResponse;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/AddRequest;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getEntry()Ljavax/naming/directory/Attributes;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setEntry(Ljavax/naming/directory/Attributes;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
