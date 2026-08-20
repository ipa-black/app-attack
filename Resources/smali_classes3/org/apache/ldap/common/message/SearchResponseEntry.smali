.class public interface abstract Lorg/apache/ldap/common/message/SearchResponseEntry;
.super Ljava/lang/Object;
.source "SearchResponseEntry.java"

# interfaces
.implements Lorg/apache/ldap/common/message/Response;


# static fields
.field public static final TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lorg/apache/ldap/common/message/MessageTypeEnum;->SEARCHRESENTRY:Lorg/apache/ldap/common/message/MessageTypeEnum;

    sput-object v0, Lorg/apache/ldap/common/message/SearchResponseEntry;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-void
.end method


# virtual methods
.method public abstract getAttributes()Ljavax/naming/directory/Attributes;
.end method

.method public abstract getObjectName()Ljava/lang/String;
.end method

.method public abstract setAttributes(Ljavax/naming/directory/Attributes;)V
.end method

.method public abstract setObjectName(Ljava/lang/String;)V
.end method
