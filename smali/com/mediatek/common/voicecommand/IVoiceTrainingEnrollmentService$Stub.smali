.class public abstract Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;
.super Landroid/os/Binder;
.source "IVoiceTrainingEnrollmentService.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

.field static final TRANSACTION_enrollSoundModel:I = 0x1

.field static final TRANSACTION_unEnrollSoundModel:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_0

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-eqz v1, :cond_1

    .line 49
    move-object v1, v0

    check-cast v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v1

    .line 51
    :cond_1
    new-instance v1, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;
    .locals 1

    .line 174
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    .line 167
    sget-object v0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 168
    sput-object p0, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService;

    .line 169
    const/4 v0, 0x1

    return v0

    .line 171
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 55
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const-string v0, "com.mediatek.common.voicecommand.IVoiceTrainingEnrollmentService"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 64
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 85
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->unEnrollSoundModel()Z

    move-result v2

    .line 87
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return v1

    .line 69
    .end local v2    # "_result":Z
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 75
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 78
    .local v5, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/IVoiceTrainingEnrollmentService$Stub;->enrollSoundModel(IILjava/lang/String;I)Z

    move-result v6

    .line 79
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v1
.end method
