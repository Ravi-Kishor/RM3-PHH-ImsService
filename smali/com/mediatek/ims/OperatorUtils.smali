.class public Lcom/mediatek/ims/OperatorUtils;
.super Ljava/lang/Object;
.source "OperatorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/OperatorUtils$OPID;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OperatorUtils"

.field private static final PROPERTY_MTK_CT_VOLTE_SUPPORT:Ljava/lang/String; = "persist.vendor.mtk_ct_volte_support"

.field private static final PROPERTY_MTK_DYNAMIC_IMS_SWITCH:Ljava/lang/String; = "persist.vendor.mtk_dynamic_ims_switch"

.field private static final PROPERTY_MTK_UIM_SUBSCRIBERID:Ljava/lang/String; = "vendor.ril.uim.subscriberid"

.field private static final mOPMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mediatek/ims/OperatorUtils$OPID;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Lcom/mediatek/ims/OperatorUtils$1;

    invoke-direct {v0}, Lcom/mediatek/ims/OperatorUtils$1;-><init>()V

    sput-object v0, Lcom/mediatek/ims/OperatorUtils;->mOPMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMainCapabilityPhoneId()I
    .locals 3

    .line 162
    const/4 v0, 0x1

    const-string v1, "persist.vendor.radio.simswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 163
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 164
    :cond_0
    const/4 v1, -0x1

    .line 166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OperatorUtils"

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v1
.end method

.method public static getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 7
    .param p0, "phoneId"    # I

    .line 177
    const-string v0, ""

    .line 178
    .local v0, "mccMncPropertyName":Ljava/lang/String;
    const-string v1, ""

    .line 179
    .local v1, "mccMnc":Ljava/lang/String;
    const/4 v2, 0x0

    .line 180
    .local v2, "phoneType":I
    invoke-static {p0}, Lcom/mediatek/ims/common/SubscriptionManagerHelper;->getSubIdUsingPhoneId(I)I

    move-result v3

    .line 182
    .local v3, "subId":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v2

    .line 184
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 185
    if-nez p0, :cond_0

    .line 186
    const-string v0, "vendor.cdma.ril.uicc.mccmnc"

    goto :goto_0

    .line 188
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vendor.cdma.ril.uicc.mccmnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    if-nez p0, :cond_2

    .line 193
    const-string v0, "vendor.gsm.ril.uicc.mccmnc"

    goto :goto_0

    .line 195
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vendor.gsm.ril.uicc.mccmnc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    const-string v4, ""

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMccMnc, mccMnc value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "OperatorUtils"

    invoke-static {v5, v1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-object v1
.end method

.method public static isCTVolteDisabled(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 212
    const-string v0, "persist.vendor.mtk_dynamic_ims_switch"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "persist.vendor.mtk_ct_volte_support"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/mediatek/ims/OperatorUtils$OPID;->OP09:Lcom/mediatek/ims/OperatorUtils$OPID;

    invoke-static {v0, p0}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "OperatorUtils"

    const-string v1, "SIM loaded, but CT VoLTE shall not support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x1

    return v0

    .line 219
    :cond_0
    return v1
.end method

.method public static isMainCapabilitySimOperator(Lcom/mediatek/ims/OperatorUtils$OPID;)Z
    .locals 2
    .param p0, "id"    # Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 147
    invoke-static {}, Lcom/mediatek/ims/OperatorUtils;->getMainCapabilityPhoneId()I

    move-result v0

    .line 148
    .local v0, "phoneId":I
    invoke-static {p0, v0}, Lcom/mediatek/ims/OperatorUtils;->isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z

    move-result v1

    return v1
.end method

.method public static isMatched(Lcom/mediatek/ims/OperatorUtils$OPID;I)Z
    .locals 3
    .param p0, "id"    # Lcom/mediatek/ims/OperatorUtils$OPID;
    .param p1, "phoneId"    # I

    .line 152
    invoke-static {p1}, Lcom/mediatek/ims/OperatorUtils;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "mccMnc":Ljava/lang/String;
    sget-object v1, Lcom/mediatek/ims/OperatorUtils;->mOPMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 155
    .local v1, "mccMncList":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v2, 0x1

    return v2

    .line 158
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isOperator(Ljava/lang/String;Lcom/mediatek/ims/OperatorUtils$OPID;)Z
    .locals 4
    .param p0, "mccMnc"    # Ljava/lang/String;
    .param p1, "id"    # Lcom/mediatek/ims/OperatorUtils$OPID;

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "r":Z
    sget-object v1, Lcom/mediatek/ims/OperatorUtils;->mOPMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 229
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOperator: id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "OperatorUtils"

    invoke-static {v2, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", matched = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    if-eqz v0, :cond_1

    const-string v3, "true"

    goto :goto_0

    :cond_1
    const-string v3, "false"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return v0
.end method
