.class public final Lcom/yandex/metrica/impl/ob/j8$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/j8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x21

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "global_number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "number_of_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "time"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "wifi_network_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cell_info"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "location_info"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "error_environment"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "user_info"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "session_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "app_environment"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "app_environment_revision"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cellular_connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "custom_type"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "wifi_access_point"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "encrypting_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "profile_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "first_occurrence_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "battery_charge_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "collection_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "has_omitted_data"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "call_state"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "attribution_id_changed"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "open_id"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "extras"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/j8$d;->a:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,global_number INTEGER,number_of_type INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT \'\',cell_info TEXT DEFAULT \'\',location_info TEXT DEFAULT \'\',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/f6;->b:Lcom/yandex/metrica/impl/ob/f6;

    .line 96
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/f6;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",app_environment TEXT DEFAULT \'{}\',app_environment_revision INTEGER DEFAULT 0,truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2,cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT, encrypting_mode INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/Em;->b:Lcom/yandex/metrica/impl/ob/Em;

    .line 108
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Em;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", profile_id TEXT, first_occurrence_status INTEGER DEFAULT 0, battery_charge_type INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/yandex/metrica/impl/ob/E$b$a;->b:Lcom/yandex/metrica/impl/ob/E$b$a;

    .line 113
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/E$b$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", collection_mode TEXT, has_omitted_data INTEGER DEFAULT -1, call_state INTEGER DEFAULT 0, source INTEGER DEFAULT 0, attribution_id_changed INTEGER DEFAULT 0, open_id INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d$a;-><init>()V

    iget-wide v1, v1, Lcom/yandex/metrica/impl/ob/qf$d$a;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras BLOB )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/j8$d;->b:Ljava/lang/String;

    return-void
.end method
