.class public Lcom/bytedance/sdk/openadsdk/core/settings/cJ;
.super Ljava/lang/Object;
.source "AdSlotSetter.java"


# instance fields
.field public ABk:I

.field public CJ:I

.field public CQU:I

.field public Dww:I

.field public EBS:I

.field public Eh:I

.field public FQ:I

.field public Gm:I

.field public HzH:I

.field public Jma:I

.field public MND:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/hm;",
            ">;"
        }
    .end annotation
.end field

.field public MQ:I

.field public NFd:Z

.field public PAe:J

.field public Qhi:Ljava/lang/String;

.field public ROR:I

.field public Sf:I

.field public Tgh:I

.field public WAv:I

.field public aP:I

.field public ac:I

.field public bxS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cJ:I

.field public dIT:Lorg/json/JSONObject;

.field public es:I

.field public fl:I

.field public hm:I

.field public hpZ:I

.field public iMK:I

.field public ip:Ljava/lang/String;

.field public jPH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/hm;",
            ">;"
        }
    .end annotation
.end field

.field public js:Z

.field public kYc:I

.field public lB:Z

.field public lG:I

.field public pA:I

.field public pM:I

.field public qMt:Z

.field public sDy:Z

.field public tP:I

.field public xyz:Ljava/lang/String;

.field public yN:I

.field public zc:I

.field public zn:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->cJ:I

    .line 58
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    const/4 v1, 0x2

    .line 59
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CJ:I

    .line 60
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->fl:I

    const/16 v2, 0x64

    .line 61
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    const/4 v2, 0x0

    .line 62
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ROR:I

    .line 63
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Sf:I

    .line 64
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hm:I

    const/4 v3, 0x3

    .line 65
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->WAv:I

    const/16 v3, 0x1e

    .line 66
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Gm:I

    .line 70
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zc:I

    .line 71
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    .line 72
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->iMK:I

    .line 73
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pA:I

    const/16 v3, 0x5dc

    .line 74
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hpZ:I

    .line 75
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->HzH:I

    const/16 v3, 0xdac

    .line 76
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->kYc:I

    .line 77
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->tP:I

    const/4 v3, 0x5

    .line 78
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MQ:I

    .line 79
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->qMt:Z

    .line 80
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->EBS:I

    .line 82
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Dww:I

    const/4 v4, -0x1

    .line 83
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CQU:I

    .line 84
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pM:I

    .line 85
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Eh:I

    .line 86
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->aP:I

    .line 87
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->NFd:Z

    .line 88
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->sDy:Z

    .line 89
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lB:Z

    .line 90
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lG:I

    .line 92
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Jma:I

    .line 94
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->js:Z

    const v2, 0xea60

    .line 95
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zn:I

    .line 96
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->es:I

    const/16 v1, 0x3e8

    .line 97
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->yN:I

    .line 98
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->FQ:I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->jPH:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MND:Ljava/util/List;

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->dIT:Lorg/json/JSONObject;

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Qhi:Ljava/lang/String;

    .line 233
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 57
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->cJ:I

    .line 58
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    const/4 v3, 0x2

    .line 59
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CJ:I

    .line 60
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->fl:I

    const/16 v4, 0x64

    .line 61
    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    const/4 v5, 0x0

    .line 62
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ROR:I

    .line 63
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Sf:I

    .line 64
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hm:I

    const/4 v6, 0x3

    .line 65
    iput v6, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->WAv:I

    const/16 v7, 0x1e

    .line 66
    iput v7, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Gm:I

    .line 70
    iput v7, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zc:I

    .line 71
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    .line 72
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->iMK:I

    .line 73
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pA:I

    const/16 v8, 0x5dc

    .line 74
    iput v8, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hpZ:I

    .line 75
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->HzH:I

    const/16 v9, 0xdac

    .line 76
    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->kYc:I

    .line 77
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->tP:I

    const/4 v9, 0x5

    .line 78
    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MQ:I

    .line 79
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->qMt:Z

    .line 80
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->EBS:I

    .line 82
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Dww:I

    const/4 v10, -0x1

    .line 83
    iput v10, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CQU:I

    .line 84
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pM:I

    .line 85
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Eh:I

    .line 86
    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->aP:I

    .line 87
    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->NFd:Z

    .line 88
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->sDy:Z

    .line 89
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lB:Z

    .line 90
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lG:I

    .line 92
    iput v10, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Jma:I

    .line 94
    iput-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->js:Z

    const v11, 0xea60

    .line 95
    iput v11, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zn:I

    .line 96
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->es:I

    const/16 v12, 0x3e8

    .line 97
    iput v12, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->yN:I

    .line 98
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->FQ:I

    .line 102
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->jPH:Ljava/util/List;

    .line 103
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MND:Ljava/util/List;

    .line 104
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 122
    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->dIT:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    return-void

    .line 126
    :cond_0
    const-string v13, "code_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Qhi:Ljava/lang/String;

    .line 127
    const-string v13, "auto_play"

    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->cJ:I

    .line 128
    const-string v13, "endcard_close_time"

    invoke-virtual {v1, v13, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Jma:I

    .line 129
    const-string v13, "voice_control"

    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    .line 130
    const-string v14, "rv_preload"

    invoke-virtual {v1, v14, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CJ:I

    .line 131
    const-string v14, "nv_preload"

    invoke-virtual {v1, v14, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->fl:I

    .line 132
    const-string v14, "proportion_watching"

    invoke-virtual {v1, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Tgh:I

    .line 133
    const-string v4, "skip_time_displayed"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ROR:I

    .line 134
    const-string v4, "video_skip_result"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Sf:I

    .line 135
    const-string v4, "reg_creative_control"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hm:I

    .line 136
    const-string v4, "play_bar_show_time"

    invoke-virtual {v1, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->WAv:I

    .line 137
    const-string v4, "rv_skip_time"

    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Gm:I

    if-gez v4, :cond_1

    .line 139
    iput v7, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Gm:I

    .line 141
    :cond_1
    invoke-virtual {v1, v13, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    .line 142
    const-string v4, "if_show_win"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->iMK:I

    .line 143
    const-string v4, "sp_preload"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pA:I

    .line 144
    const-string v4, "stop_time"

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->hpZ:I

    .line 145
    const-string v4, "native_playable_delay"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->HzH:I

    .line 146
    const-string v4, "time_out_control"

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->kYc:I

    .line 147
    const-string v4, "playable_close_time"

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->CQU:I

    .line 148
    const-string v4, "playable_reward_type"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->tP:I

    .line 149
    const-string v4, "reward_is_callback"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->EBS:I

    .line 150
    const-string v4, "iv_skip_time"

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MQ:I

    if-gez v4, :cond_2

    .line 152
    iput v9, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MQ:I

    .line 155
    :cond_2
    const-string v4, "parent_tpl_ids"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Qhi(Lorg/json/JSONArray;)V

    .line 156
    const-string v4, "slot_type"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Dww:I

    .line 157
    const-string v4, "close_on_click"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->qMt:Z

    .line 158
    const-string v4, "allow_system_back"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->pM:I

    .line 159
    const-string v4, "splash_skip_time"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Eh:I

    .line 160
    const-string v4, "splash_image_count_down_time"

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->aP:I

    .line 161
    const-string v4, "splash_count_down_time_off"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->sDy:Z

    .line 162
    const-string v4, "splash_close_on_click"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lB:Z

    .line 163
    const-string v4, "splash_load_strategy"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lG:I

    if-ltz v4, :cond_3

    if-le v4, v2, :cond_4

    .line 165
    :cond_3
    iput v5, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->lG:I

    .line 169
    :cond_4
    const-string v4, "allow_mediaview_click"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->NFd:Z

    .line 171
    const-string v4, "total_time_out"

    invoke-virtual {v1, v4, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zn:I

    if-lez v4, :cond_5

    const v6, 0x1b7740

    if-le v4, v6, :cond_6

    .line 173
    :cond_5
    iput v11, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zn:I

    .line 175
    :cond_6
    const-string v4, "req_parallel_num"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->es:I

    if-lez v4, :cond_7

    const/4 v6, 0x4

    if-le v4, v6, :cond_8

    .line 177
    :cond_7
    iput v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->es:I

    .line 179
    :cond_8
    const-string v4, "bidding_token_tmax"

    invoke-virtual {v1, v4, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->yN:I

    .line 180
    const-string v4, "ad_load_type"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->FQ:I

    if-lez v4, :cond_9

    if-le v4, v3, :cond_a

    .line 182
    :cond_9
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->FQ:I

    .line 184
    :cond_a
    const-string v4, "is_mediation"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->js:Z

    if-eqz v4, :cond_12

    .line 188
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ReL()V

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    const-string v8, "mediation_config"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 192
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_11

    .line 193
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 194
    const-string v10, "adn_name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    const-string v10, "adn_slot_id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 196
    const-string v10, "ad_expired_time"

    const v12, 0x36ee80

    invoke-virtual {v9, v10, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    .line 197
    const-string v10, "req_bidding_type"

    invoke-virtual {v9, v10, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 198
    const-string v12, "rit_cpm"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 199
    const-string v12, "show_sort"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v18

    .line 200
    const-string v12, "layer_time_out"

    const/16 v7, 0x7d0

    invoke-virtual {v9, v12, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    if-lez v12, :cond_c

    if-le v12, v11, :cond_b

    goto :goto_1

    :cond_b
    move/from16 v19, v12

    goto :goto_2

    :cond_c
    :goto_1
    move/from16 v19, v7

    .line 204
    :goto_2
    const-string v7, "server_params"

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 205
    const-string v9, ""

    if-ne v10, v3, :cond_e

    .line 206
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/settings/hm;

    if-nez v7, :cond_d

    move-object/from16 v20, v9

    goto :goto_3

    :cond_d
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v7

    :goto_3
    move-object v7, v12

    move-object v12, v7

    move/from16 v16, v10

    invoke-direct/range {v12 .. v20}, Lcom/bytedance/sdk/openadsdk/core/settings/hm;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    if-nez v10, :cond_10

    .line 208
    new-instance v12, Lcom/bytedance/sdk/openadsdk/core/settings/hm;

    if-nez v7, :cond_f

    move-object/from16 v20, v9

    goto :goto_4

    :cond_f
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v20, v7

    :goto_4
    move-object v7, v12

    move-object v12, v7

    move/from16 v16, v10

    invoke-direct/range {v12 .. v20}, Lcom/bytedance/sdk/openadsdk/core/settings/hm;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_5
    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0x1e

    goto/16 :goto_0

    .line 211
    :cond_11
    iput-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->jPH:Ljava/util/List;

    .line 212
    iput-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MND:Ljava/util/List;

    .line 213
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 214
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->MND:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 217
    :cond_12
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Qhi(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 218
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ac:I

    .line 220
    :cond_13
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->Qhi(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 221
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ABk:I

    .line 224
    :cond_14
    const-string v2, "waterfall_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->PAe:J

    .line 225
    const-string v2, "waterfall_version"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->ip:Ljava/lang/String;

    iput-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->xyz:Ljava/lang/String;

    .line 228
    const-string v2, "multi_rv_skip_time"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->zc:I

    return-void
.end method

.method private static Qhi(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONArray;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->bxS:Ljava/util/List;

    const/4 v0, 0x0

    .line 242
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/cJ;->bxS:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-void
.end method
