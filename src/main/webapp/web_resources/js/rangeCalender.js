// 湲곌컙 寃��� �щ젰 �앹꽦 (�щ젰�� input id, 留덇컧�� �щ젰�� 寃쎌슦 deadline �낅젰)
const initRangeCalender = (inputId, type) => {
    const calenderId = "input#" + inputId;
    const start_dt_elem = document.createElement("input");
    start_dt_elem.setAttribute("type", "hidden");
    start_dt_elem.setAttribute("name", "start_dt");
    start_dt_elem.setAttribute("id", "start_dt");
    const end_dt_elem = document.createElement("input");
    end_dt_elem.setAttribute("type", "hidden");
    end_dt_elem.setAttribute("name", "end_dt");
    end_dt_elem.setAttribute("id", "end_dt");

    $(calenderId).after(end_dt_elem);
    $(calenderId).after(start_dt_elem);

    let range;
    if (type === "deadline") {
        // 肄� 留덇컧 濡쒖쭅�쇰줈 �명빐 寃��됯린媛꾩쓣 �댁젣 �좎쭨濡� �ㅼ젙
        range = {
      ㅻ뒛: [moment(), moment()],
      댁젣: [moment().subtract(1, "days"), moment().subtract(1, "days")],
            "吏��� 7��": [moment().subtract(7, "days"), moment().subtract(1, "days")],
            "吏��� 14��": [
            moment().subtract(14, "days"),
            moment().subtract(1, "days"),
        ],
            "吏��� 21��": [
            moment().subtract(21, "days"),
            moment().subtract(1, "days"),
        ],
            "吏��� 30��": [
            moment().subtract(30, "days"),
            moment().subtract(1, "days"),
        ],
            "�대쾲 ��": [moment().startOf("month"), moment().endOf("month")],
            "吏��� ��": [
            moment().subtract(1, "month").startOf("month"),
            moment().subtract(1, "month").endOf("month"),
        ],
    };
    } else {
        // 寃��됯린媛� �ㅻ뒛 �ы븿
        range = {
      ㅻ뒛: [moment(), moment()],
      댁젣: [moment().subtract(1, "days"), moment().subtract(1, "days")],
            "吏��� 7��": [moment().subtract(6, "days"), moment()],
            "吏��� 14��": [moment().subtract(13, "days"), moment()],
            "吏��� 21��": [moment().subtract(20, "days"), moment()],
            "吏��� 30��": [moment().subtract(29, "days"), moment()],
            "�대쾲 ��": [moment().startOf("month"), moment().endOf("month")],
            "吏��� ��": [
            moment().subtract(1, "month").startOf("month"),
            moment().subtract(1, "month").endOf("month"),
        ],
    };
    }

    // 湲곌컙 �щ젰 �앹꽦
    $(calenderId).daterangepicker(
        {
            maxSpan: {
                //�쒖옉�� 遺��� 寃��됯��κ린媛� �ㅼ젙 �듭뀡
                days: 31,
            },
            maxDate: moment(),
            ranges: range,
            locale: {
                // daterangepicker �щ㎎ �ㅼ젙 �듭뀡
                format: "YYYY-MM-DD",
                separator: " ~ ",
                applyLabel: "�뺤씤",
                cancelLabel: "痍⑥냼",
                fromLabel: "遺���",
                toLabel: "源뚯�",
                customRangeLabel: "吏곸젒�좏깮",
                weekLabel: "二�",
                daysOfWeek: ["��", "��", "��", "��", "紐�", "湲�", "��"],
                monthNames: [
                    "1��",
                    "2��",
                    "3��",
                    "4��",
                    "5��",
                    "6��",
                    "7��",
                    "8��",
                    "9��",
                    "10��",
                    "11��",
                    "12��",
                ],
                firstDay: 1,
            },
            autoUpdateInput: false,
        },
        function (start, end, label) {
            //肄쒕갚 �⑥닔
            // �꾩슂�� 肄쒕갚 泥섎━ 濡쒖쭅 異붽�
        }
    );

    // 罹섎┛�� �뺤씤 �대┃ �대깽�� 由ъ뒪��
    $(calenderId).on("apply.daterangepicker", function (ev, picker) {
        let start_date = picker.startDate.format("YYYY-MM-DD");
        let end_date = picker.endDate.format("YYYY-MM-DD");
        $(this).val(start_date + " ~ " + end_date);
        start_dt_elem.value = start_date;
        end_dt_elem.value = end_date;
    });

    // 罹섎┛�� 痍⑥냼 �대┃ �대깽�� 由ъ뒪��
    $(calenderId).on("cancel.daterangepicker", function (ev, picker) {
        $(this).val("");
        start_dt_elem.value = "";
        end_dt_elem.value = "";
    });
};