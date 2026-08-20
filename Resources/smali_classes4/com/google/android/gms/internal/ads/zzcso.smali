.class final Lcom/google/android/gms/internal/ads/zzcso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeai;


# instance fields
.field private final zza:Ljava/lang/Long;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcre;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcss;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcso;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Lcom/google/android/gms/internal/ads/zzcss;Ljava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcsn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zze:Lcom/google/android/gms/internal/ads/zzcso;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzc:Lcom/google/android/gms/internal/ads/zzcre;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzd:Lcom/google/android/gms/internal/ads/zzcss;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzeas;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzd:Lcom/google/android/gms/internal/ads/zzcss;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcss;->zza(Lcom/google/android/gms/internal/ads/zzcss;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcss;->zzc(Lcom/google/android/gms/internal/ads/zzcss;)Lcom/google/android/gms/internal/ads/zzeal;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzc:Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeat;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzeal;Lcom/google/android/gms/internal/ads/zzcpj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeas;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzeaw;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzd:Lcom/google/android/gms/internal/ads/zzcss;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcss;->zza(Lcom/google/android/gms/internal/ads/zzcss;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcss;->zzc(Lcom/google/android/gms/internal/ads/zzcss;)Lcom/google/android/gms/internal/ads/zzeal;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzc:Lcom/google/android/gms/internal/ads/zzcre;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzeax;->zza(JLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzeal;Lcom/google/android/gms/internal/ads/zzcpj;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzeaw;

    move-result-object v0

    return-object v0
.end method
