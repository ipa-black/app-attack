.class public Lorg/apache/ldap/server/protocol/LdapProtocolProvider;
.super Ljava/lang/Object;
.source "LdapProtocolProvider.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;,
        Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLERS:Ljava/util/Map;

.field public static final SERVICE_NAME:Ljava/lang/String; = "ldap"

.field static synthetic class$org$apache$ldap$common$message$AbandonRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$AbandonRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$AddRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$AddRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$BindRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$BindRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$CompareRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$CompareRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$DeleteRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$DeleteRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ExtendedRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ExtendedRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ModifyDnRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ModifyDnRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ModifyRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$ModifyRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$SearchRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$SearchRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$UnbindRequest:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$common$message$UnbindRequestImpl:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$AbandonHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$AddHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$BindHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$CompareHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$DeleteHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$ExtendedHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$ModifyDnHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$ModifyHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$SearchHandler:Ljava/lang/Class;

.field static synthetic class$org$apache$ldap$server$protocol$UnbindHandler:Ljava/lang/Class;


# instance fields
.field private final codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

.field private final handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AbandonRequest:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.ldap.common.message.AbandonRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AbandonRequest:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AbandonHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.AbandonHandler"

    if-nez v2, :cond_1

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AbandonHandler:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AbandonRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_2

    const-string v1, "org.apache.ldap.common.message.AbandonRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AbandonRequestImpl:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AbandonHandler:Ljava/lang/Class;

    if-nez v2, :cond_3

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AbandonHandler:Ljava/lang/Class;

    :cond_3
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AddRequest:Ljava/lang/Class;

    if-nez v1, :cond_4

    const-string v1, "org.apache.ldap.common.message.AddRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AddRequest:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AddHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.AddHandler"

    if-nez v2, :cond_5

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AddHandler:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AddRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_6

    const-string v1, "org.apache.ldap.common.message.AddRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$AddRequestImpl:Ljava/lang/Class;

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AddHandler:Ljava/lang/Class;

    if-nez v2, :cond_7

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$AddHandler:Ljava/lang/Class;

    :cond_7
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$BindRequest:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "org.apache.ldap.common.message.BindRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$BindRequest:Ljava/lang/Class;

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$BindHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.BindHandler"

    if-nez v2, :cond_9

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$BindHandler:Ljava/lang/Class;

    :cond_9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$BindRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_a

    const-string v1, "org.apache.ldap.common.message.BindRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$BindRequestImpl:Ljava/lang/Class;

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$BindHandler:Ljava/lang/Class;

    if-nez v2, :cond_b

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$BindHandler:Ljava/lang/Class;

    :cond_b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$CompareRequest:Ljava/lang/Class;

    if-nez v1, :cond_c

    const-string v1, "org.apache.ldap.common.message.CompareRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$CompareRequest:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$CompareHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.CompareHandler"

    if-nez v2, :cond_d

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$CompareHandler:Ljava/lang/Class;

    :cond_d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$CompareRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_e

    const-string v1, "org.apache.ldap.common.message.CompareRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$CompareRequestImpl:Ljava/lang/Class;

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$CompareHandler:Ljava/lang/Class;

    if-nez v2, :cond_f

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$CompareHandler:Ljava/lang/Class;

    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$DeleteRequest:Ljava/lang/Class;

    if-nez v1, :cond_10

    const-string v1, "org.apache.ldap.common.message.DeleteRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$DeleteRequest:Ljava/lang/Class;

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$DeleteHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.DeleteHandler"

    if-nez v2, :cond_11

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$DeleteHandler:Ljava/lang/Class;

    :cond_11
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$DeleteRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_12

    const-string v1, "org.apache.ldap.common.message.DeleteRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$DeleteRequestImpl:Ljava/lang/Class;

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$DeleteHandler:Ljava/lang/Class;

    if-nez v2, :cond_13

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$DeleteHandler:Ljava/lang/Class;

    :cond_13
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ExtendedRequest:Ljava/lang/Class;

    if-nez v1, :cond_14

    const-string v1, "org.apache.ldap.common.message.ExtendedRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ExtendedRequest:Ljava/lang/Class;

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ExtendedHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.ExtendedHandler"

    if-nez v2, :cond_15

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ExtendedHandler:Ljava/lang/Class;

    :cond_15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ExtendedRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_16

    const-string v1, "org.apache.ldap.common.message.ExtendedRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ExtendedRequestImpl:Ljava/lang/Class;

    :cond_16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ExtendedHandler:Ljava/lang/Class;

    if-nez v2, :cond_17

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ExtendedHandler:Ljava/lang/Class;

    :cond_17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyRequest:Ljava/lang/Class;

    if-nez v1, :cond_18

    const-string v1, "org.apache.ldap.common.message.ModifyRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyRequest:Ljava/lang/Class;

    :cond_18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.ModifyHandler"

    if-nez v2, :cond_19

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyHandler:Ljava/lang/Class;

    :cond_19
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_1a

    const-string v1, "org.apache.ldap.common.message.ModifyRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyRequestImpl:Ljava/lang/Class;

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyHandler:Ljava/lang/Class;

    if-nez v2, :cond_1b

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyHandler:Ljava/lang/Class;

    :cond_1b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyDnRequest:Ljava/lang/Class;

    if-nez v1, :cond_1c

    const-string v1, "org.apache.ldap.common.message.ModifyDnRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyDnRequest:Ljava/lang/Class;

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyDnHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.ModifyDnHandler"

    if-nez v2, :cond_1d

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyDnHandler:Ljava/lang/Class;

    :cond_1d
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyDnRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_1e

    const-string v1, "org.apache.ldap.common.message.ModifyDnRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$ModifyDnRequestImpl:Ljava/lang/Class;

    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyDnHandler:Ljava/lang/Class;

    if-nez v2, :cond_1f

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$ModifyDnHandler:Ljava/lang/Class;

    :cond_1f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$SearchRequest:Ljava/lang/Class;

    if-nez v1, :cond_20

    const-string v1, "org.apache.ldap.common.message.SearchRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$SearchRequest:Ljava/lang/Class;

    :cond_20
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$SearchHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.SearchHandler"

    if-nez v2, :cond_21

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$SearchHandler:Ljava/lang/Class;

    :cond_21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$SearchRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_22

    const-string v1, "org.apache.ldap.common.message.SearchRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$SearchRequestImpl:Ljava/lang/Class;

    :cond_22
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$SearchHandler:Ljava/lang/Class;

    if-nez v2, :cond_23

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$SearchHandler:Ljava/lang/Class;

    :cond_23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$UnbindRequest:Ljava/lang/Class;

    if-nez v1, :cond_24

    const-string v1, "org.apache.ldap.common.message.UnbindRequest"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$UnbindRequest:Ljava/lang/Class;

    :cond_24
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$UnbindHandler:Ljava/lang/Class;

    const-string v3, "org.apache.ldap.server.protocol.UnbindHandler"

    if-nez v2, :cond_25

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$UnbindHandler:Ljava/lang/Class;

    :cond_25
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$UnbindRequestImpl:Ljava/lang/Class;

    if-nez v1, :cond_26

    const-string v1, "org.apache.ldap.common.message.UnbindRequestImpl"

    invoke-static {v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$common$message$UnbindRequestImpl:Ljava/lang/Class;

    :cond_26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$UnbindHandler:Ljava/lang/Class;

    if-nez v2, :cond_27

    invoke-static {v3}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->class$org$apache$ldap$server$protocol$UnbindHandler:Ljava/lang/Class;

    :cond_27
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->DEFAULT_HANDLERS:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/exception/LdapNamingException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;-><init>(Lorg/apache/ldap/server/protocol/LdapProtocolProvider;Lorg/apache/ldap/server/protocol/LdapProtocolProvider$1;)V

    iput-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    .line 202
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->releaseSingleton()V

    .line 203
    new-instance v0, Lorg/apache/ldap/server/protocol/SessionRegistry;

    invoke-direct {v0, v1}, Lorg/apache/ldap/server/protocol/SessionRegistry;-><init>(Ljava/util/Hashtable;)V

    .line 205
    sget-object v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->DEFAULT_HANDLERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->DEFAULT_HANDLERS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 216
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 217
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/protocol/handler/MessageHandler;

    .line 218
    iget-object v5, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    invoke-virtual {v5, v3, v4}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;->registerMessageType(Ljava/lang/Class;Lorg/apache/mina/protocol/handler/MessageHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "failed to create handler instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " for processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " objects."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v3, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v2, v1, v3}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 226
    invoke-virtual {v2, v0}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 227
    throw v2

    .line 231
    :cond_0
    new-instance v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;

    invoke-direct {v0}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/exception/LdapNamingException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;-><init>(Lorg/apache/ldap/server/protocol/LdapProtocolProvider;Lorg/apache/ldap/server/protocol/LdapProtocolProvider$1;)V

    iput-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    .line 144
    invoke-virtual {p1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Hashtable;

    .line 145
    const-string v0, "java.naming.provider.url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {}, Lorg/apache/ldap/server/protocol/SessionRegistry;->releaseSingleton()V

    .line 147
    new-instance v0, Lorg/apache/ldap/server/protocol/SessionRegistry;

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/protocol/SessionRegistry;-><init>(Ljava/util/Hashtable;)V

    .line 149
    sget-object v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->DEFAULT_HANDLERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " objects."

    if-eqz v2, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "failed to load class null for processing "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v1, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v1, v0, v2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 168
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 169
    throw v1

    .line 174
    :cond_0
    sget-object v2, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->DEFAULT_HANDLERS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 179
    :goto_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 180
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/protocol/handler/MessageHandler;

    .line 181
    iget-object v6, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    invoke-virtual {v6, v4, v5}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;->registerMessageType(Ljava/lang/Class;Lorg/apache/mina/protocol/handler/MessageHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "failed to create handler instance of "

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " for processing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Lorg/apache/ldap/common/exception/LdapNamingException;

    sget-object v2, Lorg/apache/ldap/common/message/ResultCodeEnum;->OTHER:Lorg/apache/ldap/common/message/ResultCodeEnum;

    invoke-direct {v1, v0, v2}, Lorg/apache/ldap/common/exception/LdapNamingException;-><init>(Ljava/lang/String;Lorg/apache/ldap/common/message/ResultCodeEnum;)V

    .line 189
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/exception/LdapNamingException;->setRootCause(Ljava/lang/Throwable;)V

    .line 190
    throw v1

    .line 194
    :cond_1
    new-instance v0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;

    invoke-direct {v0, p1}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider$ProtocolCodecFactoryImpl;-><init>(Ljava/util/Hashtable;)V

    iput-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    new-instance p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;

    invoke-direct {p0}, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getCodecFactory()Lorg/apache/mina/protocol/ProtocolCodecFactory;
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->codecFactory:Lorg/apache/mina/protocol/ProtocolCodecFactory;

    return-object v0
.end method

.method public getHandler()Lorg/apache/mina/protocol/ProtocolHandler;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/apache/ldap/server/protocol/LdapProtocolProvider;->handler:Lorg/apache/ldap/server/protocol/LdapProtocolProvider$LdapProtocolHandler;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 240
    const-string v0, "ldap"

    return-object v0
.end method
