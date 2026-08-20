.class public final Lcom/ironsource/environment/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x27

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "applicationUserAgeGroup"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "uAge"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "advId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "appKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mCar"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "medV"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "connT"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "dWidth"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v4, "dHeight"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v5, "dModel"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "cTime"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "sDepRV"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "sDepIS"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "sId"

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-string v5, "plType"

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-string v5, "dOSV"

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-string v5, "dOSVF"

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-string v5, "dOS"

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-string v5, "dMake"

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-string v5, "dAPI"

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-string v5, "bId"

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-string v5, "appV"

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-string v5, "usId"

    aput-object v5, v1, v2

    const/16 v2, 0x17

    const-string v5, "bat"

    aput-object v5, v1, v2

    const/16 v2, 0x18

    const-string v5, "root"

    aput-object v5, v1, v2

    const/16 v2, 0x19

    const-string v5, "diskFS"

    aput-object v5, v1, v2

    const/16 v2, 0x1a

    const-string v5, "dLang"

    aput-object v5, v1, v2

    const/16 v2, 0x1b

    const-string v5, "MD"

    aput-object v5, v1, v2

    const/16 v2, 0x1c

    const-string v5, "uGen"

    aput-object v5, v1, v2

    const/16 v2, 0x1d

    const-string v5, "advType"

    aput-object v5, v1, v2

    const/16 v2, 0x1e

    const-string v5, "isLAT"

    aput-object v5, v1, v2

    const/16 v2, 0x1f

    const-string v5, "dVol"

    aput-object v5, v1, v2

    const/16 v2, 0x20

    const-string v5, "consent"

    aput-object v5, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "dScrenScle"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "auid"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "UA"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "asid"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/ironsource/environment/l;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/ironsource/environment/l$1;

    invoke-direct {v0}, Lcom/ironsource/environment/l$1;-><init>()V

    sput-object v0, Lcom/ironsource/environment/l;->b:Ljava/util/HashMap;

    return-void
.end method
