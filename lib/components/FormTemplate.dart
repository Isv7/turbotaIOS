import 'package:app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_tooltip/simple_tooltip.dart';

class FormTemplate extends StatefulWidget {
  final String label;
  final Widget form;
  final String tooltip;
  final double height;
  final bool require;

  const FormTemplate(
      {Key key,
      this.label,
      @required this.form,
      this.tooltip,
      this.height = 33,
      this.require = false})
      : super(key: key);

  @override
  _FormTemplateState createState() => _FormTemplateState();
}

class _FormTemplateState extends State<FormTemplate> {
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                widget.label != null
                    ? Row(children: [
                        Text(widget.label,
                            style: Theme.of(context).textTheme.bodyText2),
                        if (this.widget.require)
                          Text("*",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  .copyWith(color: Colors.red))
                      ])
                    : Container(),
                widget.tooltip != null
                    ? GestureDetector(
                        onTap: () {
                          this.setState(() {
                            _show = !_show;
                          });
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 5, left: 5),
                            child: SimpleTooltip(
                              animationDuration: Duration(milliseconds: 400),
                              tooltipDirection: TooltipDirection.left,
                              hideOnTooltipTap: true,
                              show: _show,
                              child: SvgPicture.asset('assets/img/info.svg'),
                              ballonPadding: EdgeInsets.all(0),
                              borderWidth: 0.5,
                              borderColor: Color(0xFFE8E8E8),
                              borderRadius: 1,
                              arrowBaseWidth: 14,
                              arrowLength: 10,
                              arrowTipDistance: 1,
                              customShadows: null,
                              content: Text(
                                widget.tooltip,
                                style: TextStyle(
                                  color: Color(0xFF666666),
                                  decoration: TextDecoration.none,
                                  fontSize: 9,
                                ),
                              ),
                            )),
                      )
                    : Container()
              ]),
          Stack(children: <Widget>[
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: verticalScale(context, 3)),
                height: widget.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(190, 190, 190, 0.25),
                      blurRadius: 4,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                )),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: verticalScale(context, 3)),
                child: widget.form)
          ])
        ]);
  }
}
